//------------------------------------------------------------------------------
/*
    This file is part of rippled: https://github.com/ripple/rippled
    Copyright (c) 2012, 2013 Ripple Labs Inc.

    Permission to use, copy, modify, and/or distribute this software for any
    purpose  with  or without fee is hereby granted, provided that the above
    copyright notice and this permission notice appear in all copies.

    THE  SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
    WITH  REGARD  TO  THIS  SOFTWARE  INCLUDING  ALL  IMPLIED  WARRANTIES  OF
    MERCHANTABILITY  AND  FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
    ANY  SPECIAL ,  DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
    WHATSOEVER  RESULTING  FROM  LOSS  OF USE, DATA OR PROFITS, WHETHER IN AN
    ACTION  OF  CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
    OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
*/
//==============================================================================

SETUP_LOG (TemplateCreateTransactor)

TER TemplateCreateTransactor::doApply()
{
    WriteLog (lsWARNING, TemplateCreateTransactor) << "TemplateCreate> " << mTxn.getJson(0);

    std::vector<unsigned char>	vucCode       = mTxn.getFieldVL(sfCode);
    TER                         terResult     = tesSUCCESS;

    // XXX: Check the binary for validity (pnacl-abicheck)

    // XXX: Check API version for validity

    const uint256       uCodeHash       = Serializer::getSHA512Half(vucCode);
    const uint32        uApiVersion     = mTxn.getFieldU32(sfApiVersion);
    const uint256       uLedgerIndex    = Ledger::getTemplateIndex(uApiVersion, uCodeHash);

	const std::string			strLedgerIndexHex	= uLedgerIndex.GetHex();
	boost::filesystem::path		pPexe				= theConfig.DATA_DIR / (strLedgerIndexHex + ".pexe");
	boost::filesystem::path		pNexe				= theConfig.DATA_DIR / (strLedgerIndexHex + ".nexe");

	// Build nexe if not exists
	// XXX This should be in its own class, we'll need to call it when we find an existing Template in the ledger
	// XXX This should happen completely in memory
	if (!boost::filesystem::exists(pNexe)) {
		std::ofstream			ofsPexe(pPexe.string(), std::fstream::out | std::fstream::trun | std::fstream::binary);
		if (!ofsPexe.good()) {
			cLog(lsFATAL) << "Unable to create temporary contract pexe";
			throw std::runtime_error("Unable to create temporary contract pexe");
		}

		ofsPexe.write(reinterpret_cast<const char*>(&vucCode[0]), vucCode.size());
		ofsPexe.close();

		// XXX Hide your kids, hide your wife, this is for proof-of-concept only, not meant as a permanent solution
    boost::filesystem::path	pPnaclTranslator	= theConfig.PNACL_DIR / "bin/pnacl-translate";
    const std::string		strCommand			= pPnaclTranslator.string() + " -arch x86-32 " + pPexe.string() + " -o " + pNexe.string() + " --pnacl-sb -nostdlib";

		cLog(lsINFO) << "TemplateCreate: Executing: " << strCommand.c_str();
		int iResult = system(strCommand.c_str());

		if (iResult) {
			cLog(lsWARNING) << "TemplateCreate: Translation failed, translator returned status " << iResult;
			terResult = tecFAILED_PROCESSING;
		}
	}

    if (tesSUCCESS == terResult)
    {
        WriteLog (lsWARNING, TemplateCreateTransactor) << "TemplateCreate: sfAccount=" << RippleAddress::createHumanAccountID(mTxnAccountID);
        WriteLog (lsWARNING, TemplateCreateTransactor) << "TemplateCreate: vucCode.size()=" << vucCode.size();

        SLE::pointer sleTemplate = mEngine->entryCreate(ltTEMPLATE, uLedgerIndex);

        sleTemplate->setFieldU32(sfApiVersion, uApiVersion);
        sleTemplate->setFieldVL(sfCode, vucCode);
    }

    WriteLog (lsINFO, TemplateCreateTransactor) << boost::str(boost::format("TemplateCreate: final terResult=%s") % transToken(terResult));

    return terResult;
}

// vim:ts=4

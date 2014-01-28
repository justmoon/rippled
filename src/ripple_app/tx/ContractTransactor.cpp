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

SETUP_LOG (ContractTransactor)

TER ContractTransactor::doApply()
{
    WriteLog (lsWARNING, ContractTransactor) << "Contract> " << mTxn.getJson(0);

    const uint256   uTemplateId     = mTxn.getFieldH256(sfTemplateID);
    TER             terResult       = tesSUCCESS;

    // XXX: Fetch compiled binary

    // XXX: Execute contract

    if (tesSUCCESS == terResult)
    {
        WriteLog (lsWARNING, ContractTransactor) << "Contract: sfAccount=" << RippleAddress::createHumanAccountID(mTxnAccountID);

    }

    WriteLog (lsINFO, ContractTransactor) << boost::str(boost::format("Contract: final terResult=%s") % transToken(terResult));

    return terResult;
}

// vim:ts=4

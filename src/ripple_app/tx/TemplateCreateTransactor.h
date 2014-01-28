#ifndef __TEMPLATECREATETRANSACTOR__
#define __TEMPLATECREATETRANSACTOR__

#include "Transactor.h"

class TemplateCreateTransactor : public Transactor
{
protected:

public:
	TemplateCreateTransactor(const SerializedTransaction& txn,TransactionEngineParams params, TransactionEngine* engine) : Transactor(txn,params,engine) {}
	TER doApply();
};
#endif

// vim:ts=4

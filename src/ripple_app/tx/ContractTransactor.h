#ifndef __CONTRACTTRANSACTOR__
#define __CONTRACTTRANSACTOR__

#include "Transactor.h"

class ContractTransactor : public Transactor
{
protected:

public:
    ContractTransactor(const SerializedTransaction& txn,TransactionEngineParams params, TransactionEngine* engine) : Transactor(txn,params,engine) {}
    TER doApply();
};
#endif

// vim:ts=4

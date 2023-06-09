/*******************************************************************
*
*  DESCRIPTION: Atomic Model LQN Distribute Connector
*
*  AUTHOR: Dorin Petriu
*  EMAIL: dorin@sce.carleton.ca
*
*  DATE: 2002-11-29
*  DATE: 2002-12-12  v2 with reply capability
*
*******************************************************************/

#ifndef _LQNDISTRIBUTE_H
#define _LQNDISTRIBUTE_H

#include "lqndefs.h"

class LqnDistribute : public Atomic
{
public:
  // default constructor
  LqnDistribute( const string &name = "LqnDistribute" );

  virtual string className() const ;

protected:
  Model &initFunction();
  Model &externalFunction( const ExternalMessage & );
  Model &internalFunction( const InternalMessage & );
  Model &outputFunction( const InternalMessage & );

private:
  // input ports
  const Port &in;
  const Port &response0;
  const Port &response1;
  const Port &response2;
  const Port &response3;
  const Port &response4;
  const Port &response5;
  const Port &response6;
  const Port &response7;
  const Port &response8;
  const Port &response9;
  // output ports
  Port &out0;
  Port &out1;
  Port &out2;
  Port &out3;
  Port &out4;
  Port &out5;
  Port &out6;
  Port &out7;
  Port &out8;
  Port &out9;
  Port &reply;

  Value call_dest;  // call destination
  
  int call_pend;  // flag indicating that a call is pending
  Value resp_src;  // source of the response
};
// class LqnDistribute


// inline class name
inline
string LqnDistribute::className() const
{
  return "LqnDistribute" ;
}

#endif  //_LQNDISTRIBUTE_H

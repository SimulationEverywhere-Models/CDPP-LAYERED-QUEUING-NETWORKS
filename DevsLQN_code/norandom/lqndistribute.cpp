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

#include "lqndistribute.h"	// class LqnDistribute


LqnDistribute::LqnDistribute( const string &name ) : 
  Atomic( name ), 
  in( addInputPort( "in" ) ), 
  response0( addInputPort( "response0" ) ), 
  response1( addInputPort( "response1" ) ), 
  response2( addInputPort( "response2" ) ), 
  response3( addInputPort( "response3" ) ), 
  response4( addInputPort( "response4" ) ), 
  response5( addInputPort( "response5" ) ), 
  response6( addInputPort( "response6" ) ), 
  response7( addInputPort( "response7" ) ), 
  response8( addInputPort( "response8" ) ), 
  response9( addInputPort( "response9" ) ), 
  out0( addOutputPort( "out0" ) ), 
  out1( addOutputPort( "out1" ) ), 
  out2( addOutputPort( "out2" ) ), 
  out3( addOutputPort( "out3" ) ), 
  out4( addOutputPort( "out4" ) ), 
  out5( addOutputPort( "out5" ) ), 
  out6( addOutputPort( "out6" ) ), 
  out7( addOutputPort( "out7" ) ), 
  out8( addOutputPort( "out8" ) ), 
  out9( addOutputPort( "out9" ) ),
  reply( addOutputPort( "reply" ) )
{
}


Model &LqnDistribute::initFunction()
{
  return *this ;
}


Model &LqnDistribute::externalFunction( const ExternalMessage &msg )
{
  // no call is pending yet
  call_pend = 0;

  // new call message arrives
  if( msg.port() == in ) {
    // get the destination
    call_dest = msg.value();

    // send right away
    call_pend = 1;
    holdIn( active, Time::Zero );
  }
  // else new response message arrives, so reply right away
  else if( msg.port() == response0 ) {
    resp_src = 0;
    holdIn( active, Time::Zero );
  }
  else if( msg.port() == response1 ) {
    resp_src = 1;
    holdIn( active, Time::Zero );
  }
  else if( msg.port() == response2 ) {
    resp_src = 2;
    holdIn( active, Time::Zero );
  }
  else if( msg.port() == response3 ) {
    resp_src = 3;
    holdIn( active, Time::Zero );
  }
  else if( msg.port() == response4 ) {
    resp_src = 4;
    holdIn( active, Time::Zero );
  }
  else if( msg.port() == response5 ) {
    resp_src = 5;
    holdIn( active, Time::Zero );
  }
  else if( msg.port() == response6 ) {
    resp_src = 6;
    holdIn( active, Time::Zero );
  }
  else if( msg.port() == response7 ) {
    resp_src = 7;
    holdIn( active, Time::Zero );
  }
  else if( msg.port() == response8 ) {
    resp_src = 8;
    holdIn( active, Time::Zero );
  }
  else if( msg.port() == response9 ) {
    resp_src = 9;
    holdIn( active, Time::Zero );
  }

  return *this;
}


Model &LqnDistribute::internalFunction( const InternalMessage & )
{
  passivate();
  return *this ;
}


Model &LqnDistribute::outputFunction( const InternalMessage &msg )
{
  // if a call is pending
  if( call_pend ) {
    // switch based on the destination
    switch( static_cast< int >( call_dest ) ) {
    case 0 :
      // send the call
      sendOutput( msg.time(), out0, 1 );
      break;
    case 1 :
      // send the call
      sendOutput( msg.time(), out1, 1 );
      break;
    case 2 :
      // send the call
      sendOutput( msg.time(), out2, 1 );
      break;
    case 3 :
      // send the call
      sendOutput( msg.time(), out3, 1 );
      break;
    case 4 :
      // send the call
      sendOutput( msg.time(), out4, 1 );
      break;
    case 5 :
      // send the call
      sendOutput( msg.time(), out5, 1 );
      break;
    case 6 :
      // send the call
      sendOutput( msg.time(), out6, 1 );
      break;
    case 7 :
      // send the call
      sendOutput( msg.time(), out7, 1 );
      break;
    case 8 :
      // send the call
      sendOutput( msg.time(), out8, 1 );
      break;
    case 9 :
      // send the call
      sendOutput( msg.time(), out9, 1 );
      break;
    default:
      // do not send anything, show error message
      cout << endl 
           << "ERROR LqnDistribute: cannot send to destination "
           << call_dest << "!" << endl
           << "(destination index must be between 0 and " << MAXCONN - 1 << ")" 
           << endl;
      break;
    }
    // call is no longer pending
    call_pend = 0;
  }
  // else a reply is pending
  else {
    sendOutput( msg.time(), reply, resp_src );
  }

  return *this ;
}

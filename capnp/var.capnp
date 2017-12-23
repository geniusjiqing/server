using Go = import "../../common/capnp/go.capnp";

$Go.package("capnp");
$Go.import("goshawkdb.io/server/capnp");

@0xc3ce226b914ee1eb;

using Common = import "../../common/capnp/capabilities.capnp";

struct Var {
  id              @0: Data;
  positions       @1: List(UInt8);
  writeTxnId      @2: Data;
  writeTxnClock   @3: Data;
  writesClock     @4: Data;
  valueTxnId      @5: Data;
  subscriptions   @6: Data;
}

struct VarIdPos {
  id         @0: Data;
  positions  @1: List(UInt8);
  capability @2: Common.Capability;
}

struct SubscriptionListWrapper {
  subscriptions @0: List(Subscription);
}

struct Subscription {
  txnId @0: Data;
  added @1: Bool;
}

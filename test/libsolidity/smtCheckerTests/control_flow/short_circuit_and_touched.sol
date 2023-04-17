pragma experimental SMTChecker;

contract C
{
	bool b;
	function f() public {
		if ((b = false) && (b == true)) {}
		if ((b == false) && (b = true)) {}
		if ((b = false) && (b = true)) {}
		if ((b == false) && (b == true)) {}
		if ((b = true) && b) {}
	}
}
// ----
// Warning 6838: (84-110): BMC: Condition is always false.
// Warning 6838: (121-147): BMC: Condition is always true.
// Warning 6838: (158-183): BMC: Condition is always false.
// Warning 6838: (194-221): BMC: Condition is always false.
// Warning 6838: (232-247): BMC: Condition is always true.

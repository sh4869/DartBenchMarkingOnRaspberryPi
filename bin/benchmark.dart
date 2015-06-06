import 'package:benchmark_harness/benchmark_harness.dart';

// Create a new benchmark by extending BenchmarkBase.
class TemplateBenchmark extends BenchmarkBase {
	const TemplateBenchmark() : super("Template");

	static void main() {
		new TemplateBenchmark().report();
	}

	int fib(num n) {
		if (n < 2) return n;
		return fib(n - 2) + fib(n - 1);
	}
	// The benchmark code.
	void run() {
		print(fib(42));	
	}

	// Not measured: setup code executed before the benchmark runs.
	void setup() { }

	// Not measured: teardown code executed after the benchmark runs.
	void teardown() { }
}

// Main function runs the benchmark.
main() {
	// Run TemplateBenchmark.
	TemplateBenchmark.main();
}

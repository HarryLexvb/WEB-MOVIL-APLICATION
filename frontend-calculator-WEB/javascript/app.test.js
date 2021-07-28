const algorithms = require('./app')

test("Insertion", () => {
    expect(algorithms.insertion_sort([5,4,3,2,1])).toEqual([1,2,3,4,5]);
    expect(algorithms.insertion_sort([])).toEqual([]);
    expect(algorithms.insertion_sort([10,-10,5,2])).toEqual([-10,2,5,10]);
    expect(algorithms.insertion_sort([5])).toEqual([5]);
    expect(algorithms.insertion_sort([5,3,1,3,10,20])).toEqual([1,3,3,5,10,20]);
});

test("Factorial", () => {
    expect(algorithms.factorial(5)).toBe(120);
    expect(algorithms.factorial(0)).toBe(1);
    expect(algorithms.factorial(1)).toBe(1);
    expect(algorithms.factorial(4)).toBe(24);
    expect(algorithms.factorial(3)).toBe(6);
});

test("Fibonacci", () => {
    expect(algorithms.fibonacci(0)).toBe(0);
    expect(algorithms.fibonacci(1)).toBe(1);
    expect(algorithms.fibonacci(2)).toBe(1);
    expect(algorithms.fibonacci(3)).toBe(2);
    expect(algorithms.fibonacci(10)).toBe(55);
    expect(algorithms.fibonacci(13)).toBe(233);
    expect(algorithms.fibonacci(14)).toBe(377);
});

test("Evaluation", () => {
    expect(algorithms.evaluation("10")).toBe(10);
    expect(algorithms.evaluation("10 * 20")).toBe(200);
    expect(algorithms.evaluation("(2 + 3) * 5")).toBe(25);
    expect(algorithms.evaluation("50 * 2 + 1 - 1")).toBe(100);
});


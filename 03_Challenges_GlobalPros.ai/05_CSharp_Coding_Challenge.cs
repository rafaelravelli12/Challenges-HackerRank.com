using System;

class MainClass
{
	public static bool ArrayChallenge(int[] arr)
	{
		Array.Sort(arr);
		int largestNumber = arr[arr.Length - 1];

		return CheckCombinations(arr, 0, 0, largestNumber);
	}
	private static bool CheckCombinations(int[] arr, int currentIndex, int currentSum, int targetSum)
	{
		if (currentIndex == arr.Length - 1)
		{
			return currentSum == targetSum;
		}
		if (CheckCombinations(arr, currentIndex + 1, currentSum + arr[currentIndex], targetSum))
		{
			return true;
		}
		if (CheckCombinations(arr, currentIndex + 1, currentSum, targetSum))
		{
			return true;
		}
		return false;
	}

	static void Main()
	{
		Console.WriteLine(ArrayChallenge(Console.ReadLine()));
	}
}

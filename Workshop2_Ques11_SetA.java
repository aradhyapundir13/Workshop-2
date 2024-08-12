package workshop2;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class Workshop2_Ques11_SetA {
    public static void main(String[] args) {
        List<Integer> numbers = Arrays.asList(5, 3, 8, 1, 9, 2);

        List<Integer> sortedNumbers = sortDescending(numbers);

        System.out.println("Original list: " + numbers);
        System.out.println("Sorted list: " + sortedNumbers);
    }

    public static List<Integer> sortDescending(List<Integer> list) {
        if (list == null || list.isEmpty()) {
            return list;
        }

        return list.stream()
                .sorted((a, b) -> b - a)
                .collect(Collectors.toList());
    }
}

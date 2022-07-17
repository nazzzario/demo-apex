/**
 * Created by krasnovoronka on 16/07/2022.
 */

public with sharing class MyIntegerStack {

    private static final Integer DEFAULT_CAPACITY = 16;

    private Integer [] data;
    private Integer size;

    public MyIntegerStack() {
        data = new Integer[DEFAULT_CAPACITY];
    }

    public MyIntegerStack(Integer capacity) {
        if (capacity <= 0) {
            throw new IllegalArgumentException('Invalid stack capacity');
        }
        data = new Integer[capacity];
    }

    public void push(Integer element) {
        resizeIfNeeded();
        data[size++] = element;
    }

    public Integer size() {
        return size;
    }

    private void resizeIfNeeded() {
        if (data.size() * 0.75 > size) {
            Integer [] newArr = new Integer[data.size() * 2];
            for (Integer i = 0; i < size; i++) {
                newArr[i] = data[i];
            }
            data = newArr;
        }
    }

    public Integer pop() {
        Integer tmp = data[size - 1];
        data.remove(size - 1);
        size--;
        return tmp;
    }

    public Integer peek() {
        return data[size - 1];
    }

    public Boolean isEmpty() {
        return size == 0;
    }

}
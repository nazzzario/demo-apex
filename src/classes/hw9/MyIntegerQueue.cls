/**
 * Created by krasnovoronka on 16/07/2022.
 */

public with sharing class MyIntegerQueue {
    private static final Integer DEFAULT_CAPACITY = 16;

    private Integer [] data;
    private Integer size;

    public MyIntegerQueue() {
        data = new Integer[DEFAULT_CAPACITY];
    }

    public MyIntegerQueue(Integer capacity) {
        if (capacity <= 0) {
            throw new IllegalArgumentException('Invalid queue capacity');
        }
        data = new Integer[capacity];
    }

    public void offer(Integer element) {
        resizeIfNeeded();
        data.add(0, element);
        size++;
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

    public Integer poll() {
        Integer tmp = data[0];
        data.remove(0);
        size--;
        return tmp;
    }

    public Integer element() {
        return data[0];
    }

    public Boolean isEmpty() {
        return size == 0;
    }

}
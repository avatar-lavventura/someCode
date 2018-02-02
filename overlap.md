https://stackoverflow.com/questions/4542892/possible-interview-question-how-to-find-all-overlapping-intervals#4542928 => provide us a solution to find all the overlapping intervals. On top of this problem, imagine each interval has a weight. I am aiming to find those overlap intervals summed weight, when a new interval is inserted. 

Condition: Newly inserted interval's end value is always larger than the previously inserted interval's end point, this will lead us to have already sorted end points.

When a new interval and its weight is inserted, all the overlapped intervals summed weight should be checked that does it exceeds the limit or not. For example when we insert `[15, 70] 2`, `[15, 20]` 's summed weight will be 130 and it should give an error since it exceed the limit=128, if not the newly inserted interval will be append to the list.

    int limit = 128;
    Inserted itervals in order:
    order_come | start | end | weight
    0            [10,    20]     32  
    1            [15,    25]     32  
    2            [5,     30]     32 
    3            [30,    40]     64
    4            [1,     50]     16
    5            [1,     60]     16 
    6            [15,    70]      2 <=should not append to the list.

[![enter image description here][2]][2]

    Final overall summed weight view of the List after `[15, 70] 2` is inserted:
    [60, 70, 2]     
    [50, 60, 18]    
    [40, 50, 34]    
    [30, 40, 98]    
    [25, 30, 66]    
    [20, 25, 98]    
    [15, 20, 130]  <= exceeds the limit=128, throw an error. 
    [10, 15, 96]
    [5, 10, 64]
    [1, 5, 32]
    [0, 0, 0]

Thank you for your valuable time and help.


  [1]: https://i.stack.imgur.com/5JcZB.png
  [2]: https://i.stack.imgur.com/Gtp7a.png

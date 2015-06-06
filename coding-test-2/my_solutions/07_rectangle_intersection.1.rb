def rec_intersection(rec1, rec2)
    
    x1 = [rec1[0][0], rec2[0][0]].max
    y1 = [rec1[0][1], rec2[0][1]].max
    
    x2 = [rec1[1][0], rec2[1][0]].min
    y2 = [rec1[1][1], rec2[1][1]].min
    
    if x1 < x2 && y1 < y2
        return [[x1, y1], [x2, y2]]
    end
end

p rec_intersection(
      [[0, 0], [2, 1]],
      [[1, 0], [3, 1]]
    )

p rec_intersection(
      [[1, 1], [2, 2]],
      [[0, 0], [5, 5]]
    )
    
p rec_intersection(
      [[1, 1], [2, 2]],
      [[4, 4], [5, 5]]
    )
    
p rec_intersection(
      [[1, 1], [5, 4]],
      [[2, 2], [3, 5]]
    )
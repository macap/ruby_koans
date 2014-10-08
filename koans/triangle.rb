# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  type=0;


  raise TriangleError, "It's not a triangle" if (a+b<=c || b+c<=a || a+c<=b)


  type=1 if a==b
  type=type+1 if b==c
  type=type+1 if a==c

  return :equilateral if type==3
  return :isosceles if type==1
  :scalene
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end


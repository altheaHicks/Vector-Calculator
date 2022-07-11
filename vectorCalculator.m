%{
    Althea Leigh Hicks
    Vector Calculator:
    Program that calculates various things about three vectors that are provided by user

%}

%ask user to input matrix values
prompt1 = 'Please enter a1: ';
prompt2 = 'Please enter a2: ';
prompt3 = 'Please enter a3: ';
prompt4 = 'Please enter b1: ';
prompt5 = 'Please enter b2: ';
prompt6 = 'Please enter b3: ';
prompt7 = 'Please enter c1: ';
prompt8 = 'Please enter c2: ';
prompt9 = 'Please enter c3: ';

a1 = input(prompt1);
a2 = input(prompt2);
a3 = input(prompt3);
b1 = input(prompt4);
b2 = input(prompt5);
b3 = input(prompt6);
c1 = input(prompt7);
c2 = input(prompt8);
c3 = input(prompt9);

%assigns matrices
A = [a1;a2;a3];
B = [b1;b2;b3];
C = [c1;c2;c3];

%finds and prints out dot products
ab = dot(A,B);
ac = dot(A,C);
bc = dot(B,C);


fprintf("The value for a*b is %.2f\n", ab);
fprintf("The value for a*c is %.2f\n", ac);
fprintf("The value for b*c is %.2f\n", bc);

%find the cross product of A and B
crossAB = cross(A,B);
fprintf("The cross product axb is given by \n");
disp(crossAB);

%Tests if A and B are parallel
if (crossAB(1,1) == 0) && (crossAB(2,1) == 0) && (crossAB(3,1) ==0)
  fprintf('The vectors a and b are parallel \n');

end

%Tests if any of the vectors are orthogonal
if ab == 0
  fprintf('The vectors a and b are orthogonal \n');
end
if ac == 0
  fprintf('The vectors a and c are orthogonal \n');
end
if bc == 0
  fprintf('The vectors a and b are orthogonal \n');
end


%find area of parallelogram
powerTwo = crossAB.^2;
areaAB = sqrt(powerTwo(1,1)+powerTwo(2,1)+powerTwo(3,1));
fprintf("The area of the parallelogram formed by vectors a and b is %.2f\n", areaAB);


%find area of the triangle
areaTriangle = areaAB/2;
fprintf("The area of the triangle formed by vectors a and b is %.2f\n", areaTriangle);


%find the scalar triple product
productTriple = dot(A,cross(B,C));
fprintf("The scalar triple product a*(bxc) is %.2f\n", productTriple);


%find if vectors lie on the same plane
if productTriple == 0
  fprintf("The three vectors a,b,and c lie in the same plane");
end

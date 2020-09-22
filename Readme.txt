Chip 8083 FX
------------

Supported Operator
 1. Add (+)
 2. Min (-)
 3. Multiple (*)
 4. Devide (/)
 5. Power (^)

Standard Functions Support
 1. MEM(X) -> Returns data store in memory index X
 2. ABS(X) -> Returns a value of the same type that is passed to it specifying the absolute value of X
 3. SQR(X) -> Returns a Double specifying the square of X
 4. SQRT(X) -> Returns a Double specifying the square root of X
 5. INT(X) -> Returns the integer portion of X
 6. DEC(X) -> Returns the decimal portion of X
 7. LOG(X) -> Returns a Double specifying the natural logarithm of X
 8. ALOG(X) -> Returns a Double specifying e (the base of natural logarithms) raised to a power. 
               Anti logarithm (natural logarithm) of X
 9. RAD(X) -> Returns a Double specifying the convertion of X to radian
10. DEG(X) -> Returns a Double specifying the convertion of X to degree
11. SIN(X) -> Returns a Double specifying the sine of X
12. COSIN(X) -> Returns a Double specifying the cosine of X
13. TAN(X) -> Returns a Double specifying the tangent of X
14. ATAN(X) -> Returns aDouble specifying the arctangent of X

Standard Contants Support
 1. LRES -> Returns a Double specifying the last result
 2. PHI -> Returns a Double specifying a phi (3.1415925...)
 3. RND -> Returns a Double random data between 0 to 1

Derived Functions Support
 1. SEC(X) -> Secant
 2. COSEC(X) -> Cosecant
 3. COTAN(X) -> Cotangent
 4. ASIN(X) -> ArcSine
 5. ACOSIN(X) -> ArcCosine
 6. ASEC(X) -> ArcSecant
 7. ACOSEC(X) -> ArcCosecant
 8. ACOTAN(X) -> ArcCotangent
 9. HSIN(X) -> Hyperbolic Sine
10. HCOSIN(X) -> Hyperbolic Cosine
11. HTAN(X) -> Hyperbolic Tangent
12. HSEC(X) -> Hyperbolic Secant
13. HCOSEC(X) -> Hyperbolic Cosecant
14. HCOTAN(X) -> Hyperbolic Cotangent
15. HASIN(X) -> Hyperbolic ArcSine
16. HACOSIN(X) -> Hyperbolic AcrCosine
17. HATAN(X) -> Hyperbolic ArcTangent
18. HASEC(X) -> Hyperbolic ArcSecant
19. HACOSEC(X) -> Hyperbolic ArcCosecant
20. HACOTAN(X) -> Hyperbolic ArcCotangent


Expression
You can make any expression using the supported operator
ex:
  2.45*(7+18)^3
  (37688*0.13) - (676833*45e-7)

Using Function in expression
You can use any supported function in your expression
ex:
  LOG(SQR(3))+MEM(2)-MEM(ABS(MEM(3)+1))

Using BaseCalculation
You can switch between radian and degree base calculation
when using angle functions
ex:
  BaseCalculation = DegreeMode
  SIN(45)

Declare Functions
Using DeclareFunction(FunctionName) = Formula.
You must use X for variable name
ex:
  DeclareFunction("TEST") = 4*SQR(X) + 2*X + 16
  TEST(5) + TEST(MEM(3))

Declare Constants
Using DeclareConstant(ConstantName) = Value
ex:
  DeclareConstant(BLACK1) = 100
  DeclareConstant(BLACK2) = 50

  LOG(BLACK1) / LOG(BLACK2)



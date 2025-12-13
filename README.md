# code language

不同语言的学习, 以及之间的模式

- [ ] Haskell
- [ ] Dart
- [ ] Kotlin
- [ ] JavaScript/TypeScript
- [ ] golang
- [ ] Python
- [ ] C/C++
- [ ] scala
- [ ] nim
- [ ] Elixir
- [ ] Gleam
- [ ] Roc
- [ ] Koka
- [ ] Lean
- [ ] Idris
- [ ] Gleam
- [ ] zig
- [ ] lua

## Haskell

### if-else expression

```haskell
x = if condition then expr1 else expr2
```

### list expressions

set comprehensions，这个表达有意思

```haskell
[x*2 | x <- [1..10], x `mod` 3 == 1]  -- [2,8,14,20]
```

和数学表达式类似

```math
\{ 2x | x \in \{1, 2, ..., 10\} \land x \mod 3 = 1 \}
```

也就是如下形式

```math
\text{expression | range, condition}
```

```haskell
[(a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]
```

> 方便随时构造列表

### list operations

take/drop/filter/map/head/tail

```haskell
take 5 [1..10]    -- [1,2,3,4,5]
drop 5 [1..10]    -- [6,7,8,9,10]
```

### 类型

```haskll
(==) :: (Eq a) => a -> a -> Bool 
```

Eq 是泛型约束，相当于

```dart
bool equals<T extends Equatable>(T a, T b);
```


### function

```haskell
factorial :: (Integral a) => a -> a  
factorial 0 = 1  
factorial n = n * factorial (n - 1)  
```

很方便递归

> 函数是分支，很像水流分开一样，又很简洁地表达出来

```haskell
sum' :: (Num a) => [a] -> a  
sum' [] = 0  
sum' (x:xs) = x + sum' xs  
```

提供了很好的方式拆解


```haskell
myCompare :: (Ord a) => a -> a -> Ordering  
a `myCompare` b  
    | a > b     = GT  
    | a == b    = EQ  
    | otherwise = LT  
```

更像分支了

```haskell
initials :: String -> String -> String  
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."  
    where (f:_) = firstname  
          (l:_) = lastname  
```

```haskell
cylinder :: (RealFloat a) => a -> a -> a  
cylinder r h = 
    let sideArea = 2 * pi * r * h  
        topArea = pi * r ^2  
    in  sideArea + 2 * topArea  
```

> where 是补充定义，比如 firstname 是共识的，然后需要进一步解释，let 一般是提出一个概念

### Algebraic data

```haskell
data Maybe a = Nothing | Just a  
```

> 定义一个作用域，还可以递归定义


```haskell
data List a = Empty | Cons a (List a)
```

## Dart

### if-let

```dart
if (func() case final ret when ret < 0) {
  print('error: $ret');
}
```

### monoid

```dart
final s = p.read((offset) => (data.getUint16(offset), 2));
```

由 P 管理指针的位置

> 函数就可以模拟 monoid 的行为

### 装饰器设计

类以延迟定义: [infix](https://pub.dev/packages/infix), 不断修饰 child 的过程

```dart
-via((Widget child) => InfixWidget('A', child)) 
.via((Widget child) => InfixWidget('B', child)) 
.via((Widget child) => InfixWidget('C', child)) 
> Widget('Leaf');
```


### bloc

```dart
BlocListener<M, S>(
  listener: (context, state) {
    otherCms.add(.event());
  },
);
```


## Kotlin


## Typescript


## Python

### decorators

```python
@my_decorator
def my_function():
    pass
```




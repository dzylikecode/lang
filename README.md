# code language

不同语言的学习, 以及之间的模式

- [ ] Haskell
- [ ] Dart
- [ ] Kotlin
- [ ] JavaScript
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


## JavaScript


## Python

### decorators

```python
@my_decorator
def my_function():
    pass
```




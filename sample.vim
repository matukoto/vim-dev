" comment
" source sample.vim => aiueo
echo 'aiueo'

"" 型

" 文字列 
" ' と " の違い
" result => hello world
echo "hello\tworld"
" result => hello\tworld
echo 'hello\tworld'
" 結合 .
" result => helloworld
echo 'hello' . 'world'

" 辞書 = 連想配列 key value
let dict = {'name': 'hello', 'age', 22}
" 辞書に要素を追加 以下の2つの書き方がある
let dict.name = 'world'
" or
let dict['age'] = 23

" リスト
let list = [1, 'cat', {'name': 'tama'}]
" リストから要素を取り出す
" result => cat
echo list[1]
" get($target, $index, $default) でも指定できる ( 辞書にも使える)
" result => NONE
echo get(list, 3, 'NONE')
" リストの結合 join($list, $sep)
" result => hello my name is world
echo join(list, ' ')

"" 変数の宣言･代入
let name = 'world'
"" 再代入にも let が必要
let name = 'hello'

" スコープ
" 接頭語によってスコープが変わる
g: グローバルスコープ｡どこからでも使用可能
s: スクリプトスコープ｡スクリプトファイル内殻のみ使用可能
l: 関数内ローカルスコープ｡関数内のみ使用可能｡省略可能
a: 関数の引数｡関数内のみ使用可能
v: グローバルスコープ｡vim が予め定義している変数

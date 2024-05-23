# # # メンバークラスの設定 ----------------
class Member
  attr_accessor :name

  def initialize(name)
    @name = name
  end

end

# メンバーリスト作成（オブジェクト）
members = []
members = [Member.new("川満"),  #0番目の場合、
            Member.new("笹川"),
            Member.new("重光"),
            Member.new("中澤"),
            Member.new("龍川"),
            Member.new("篠崎"),
            Member.new("岡本")
 ]
 puts members[0].name #川満さんだけが取れる #[{name:xx},{{name:xx}}]

# メンバーリストを表示する。（Rubyのオブジェクト用メソッドをあえて使用していない）
puts "------メンバーリスト------"
i = 0
while members[i] != nil do
  puts "#{i}: #{members[i].name}"
  i += 1
end

new_member_list ||= [] #残ったメンバーの新しい配列(文字列)。

#どちらのリストを利用するかの関数？　使うリストの名前(members,new_members)を出す

def  list_choice(members,new_members)
  if new_members.length ==0  #  memberつかう
        members
    else  #new_membersのリストを使う
      new_members
    end
  end

  


#ループに入るまでの処理 ここからループ開始
while true
    puts "除外するメンバーがいますか？　y/n"
    answer = gets.chomp
    # puts answer

    #除外するメンバーの番号をもらって、除外されるメンバー以外の新しい配列を返す処理
    binding.irb
    if answer=="y"
      puts "除外するメンバーの番号を選んでください"
      member_numbers = gets.chomp.to_i #できあがりは文字列の配列["1", "2"]→1つの整数が返ってくる
      #[{name:xx},{{name:xx}}]
      #binding.irb
      #new_member_list ||= [] #残ったメンバーの新しい配列(文字列)。
      #new_member_numbers = [] #整数になった新しい配列

      # member_numbers.each do |list|
      #   new_member_numbers << list.to_i 
      # end
      # puts "これは#{new_member_numbers}" #数字だけが入った配列が出力
        

        # puts "#{s.name} at index #{i}" #sは名前が入っていく。iはindexが入る。指定の人だけ除外したい。例：new_member_numbersには配列[0,2],ABC 0,2 0だけ
        #new_member_numbers.each do |number|  
      binding.irb
      using_list = list_choice(members,new_member_list)
          
      using_list.each_with_index do |s,i| 
        if member_numbers != i
            new_member_list << s
        end
      end
    else
      binding.irb
      break
    end
end
 puts new_member_list


#ランダム処理のメソッド

def random(num)
   rand(num)
end
random_number = random(new_member_list.length) #ランダム処理後の数字を変数に代入

touban = new_member_list[random_number]
puts touban

#end

# members.each_with_index do |s,i|
#   # puts "#{s.name} at index #{i}" #sは名前が入っていく。iはindexが入る。
#   if member_numbers != i
#     new_meber_list << s.name
#   end
# end







# members.each do |member|
#   member != member_numbers
# end
# members.map(member=>member.name=member_numbers)
# end



# ################以下、ショッピングプログラムのコピペ↓######################################################
 
# # 商品リスト作成
# groceries = []    # 商品リストの入れ物を配列として用意する。
# # 商品名、単価を配列として登録する。
# groceries = [{name: "バナナ", price: 300},
#             {name: "パン", price: 150},
#             {name: "牛乳", price: 230},
#             {name: "卵", price: 280},
#             {name: "肉", price: 800},
#             {name: "魚", price: 500}]

# # 購入者（山田太郎）を設定する。
# taro_name = "山田太郎"
# taro_address = "Tokyo"

# # 商品リストを表示する。（Rubyのオブジェクト用メソッドをあえて使用していない）
# puts "------食料品リスト------"
# i = 0
# while groceries[i] != nil do
#   puts "#{i}: #{groceries[i][:name]}, #{groceries[i][:price]}"
#   i += 1
# end

# # 山田太郎がショッピングを開始する。
# taro_basket = []   # 空の買い物かごを用意する
# shopping_end = nil
# while shopping_end != "yes" do
#   # 商品選択
#   puts "商品番号選択"
#   number = gets.to_i  # 商品番号を入力する
#   # 数入力
#   puts "商品数量入力"
#   quantity = gets.to_i  # 商品数量を入力する
#   # 山田太郎の買い物かごに選択した内容を追加する。
#   taro_basket << [groceries[number], quantity]
#   puts "買い物終了するか？ yes/no"
#   shopping_end = gets.chomp
# end
# # 山田太郎がショッピングを終了する。

# # 山田太郎の買い物かごからお買い物リスト作成する。
# @sum = 0
# i = 0
# puts "=====　買い物リスト(#{taro_name}/#{taro_address})　====="
# # 山田太郎の買い物かごから買い物リストを作成する。
# while taro_basket[i] != nil do
#   grocery = taro_basket[i][0]
#   quantum = taro_basket[i][1]
#   money = grocery[:price] * quantum
#   puts "商品名: #{grocery[:name]}, 数量: #{quantum}, 金額：#{money}"
#   @sum += money
#   i += 1
# end
# puts "----------合計：#{@sum}-------------"
# puts "===================================="
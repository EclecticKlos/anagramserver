get '/:word' do
  @word = params[:word]

  @search_word = Word.all.where({word: @word}).first
  p @word
  p @search_word
  # @word_list = @search_word.anagrams
  erb :"anagrams/index"
end

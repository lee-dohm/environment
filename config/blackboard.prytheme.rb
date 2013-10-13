
t = PryTheme.create :name => 'blackboard' do
  author :name => 'Lee Dohm', :email => 'lee@liftedstudios.com'
  description 'Blackboard theme based on Sublime Text Blackboard theme'

  define_theme do
    class_ 'international_orange'
    class_variable 'white'
    comment 'gray'
    constant 'international_orange'
    error 'red', 'white'
    float 'yellow'
    global_variable 'white'
    inline_delimiter 'yellow'
    instance_variable 'white'
    integer 'yellow'
    keyword 'orange'
    method 'international_orange'
    predefined_constant 'international_orange'
    symbol 'yellow'

    regexp do
      self_ 'green'
      char 'yellow'
      content 'green'
      delimiter 'green'
      modifier 'green'
      escape 'yellow'
    end

    shell do
      self_ 'green'
      char 'yellow'
      content 'green'
      delimiter 'green'
      escape 'yellow'
    end

    string do
      self_ 'green'
      char 'yellow'
      content 'green'
      delimiter 'green'
      escape 'yellow'
    end
  end
end

PryTheme::ThemeList.add_theme(t)

# money-converter

### Download and Install
```
gem install money_converter
```

or on your Gemfile:
```
gem "money_converter", "~> 1.0.1"
```

and run
```
bundle install
```



### Usage

```ruby

require 'money_converter'

money = MoneyConverter.new('BRL','USD',10.00)
money.exchange  #=> 4.74113

```

### Changelog

Version 1.0.0

* The method ``` convert_currency ``` has been replaced by ``` exchange ``` in this version. 




### Contributing to money-converter
 
1. Fork the project.
2. Start a feature/bugfix branch.
3. Commit and push until you are happy with your contribution.
4. Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.


Copyright (c) 2012 LEONEL MORAIS. See LICENSE.txt for
further details.


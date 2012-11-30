# money-converter

### Install
```
gem install money-converter
```

### Usage

```ruby

require 'money-converter'

money = MoneyConverter.new('BRL','USD',10.00)
money.convert_currency  #=> :"4.77852 USD"

```


## Contributing to money-converter
 
1 Fork the project.
2 Start a feature/bugfix branch.
3 Commit and push until you are happy with your contribution.
4 Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.


Copyright (c) 2012 LEONEL MORAIS. See LICENSE.txt for
further details.


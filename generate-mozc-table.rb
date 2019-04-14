require 'yaml'


base_table = open('act.yaml', 'r') {|f| YAML.load(f) }
extra_table = open('act-opt-out-y.yaml', 'r') {|f| YAML.load(f) }
symbol_table = open('symbols.yaml', 'r') {|f| YAML.load(f) }
table = base_table.merge(extra_table).merge(symbol_table)

table.each do |k, v|
  printf("%s\t%s\t%s\n", k, v, '')
end

require 'fileutils'

direct_input = ARGV[0].dup
input_file = ARGV[1].dup

# This is the output file
fr = File.open(input_file, "r")
fw = File.open("output1.txt", "w")
fr.each_line do |line|
    fw.write(line + "\nadded for demo")
end
fr.close()
fw.close()

# This is stoud log
print "This is a sample output to the stdout\n"

# This is the visualizations
FileUtils.cp('/home/algorithm/web/algorun_info/output_example/output-visualization.png', '/home/algorithm/src/')
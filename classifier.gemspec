PKG_VERSION = "1.3.2"

PKG_FILES = [
"lib",
"lib/classifier",
"lib/classifier/bayes.rb",
"lib/classifier/extensions",
"lib/classifier/extensions/string.rb",
"lib/classifier/extensions/vector.rb",
"lib/classifier/extensions/vector_serialize.rb",
"lib/classifier/extensions/word_hash.rb",
"lib/classifier/lsi",
"lib/classifier/lsi/content_node.rb",
"lib/classifier/lsi/summary.rb",
"lib/classifier/lsi/word_list.rb",
"lib/classifier/lsi.rb",
"lib/classifier.rb",
"bin",
"bin/bayes.rb",
"bin/summarize.rb",
"test",
"test/bayes",
"test/bayes/bayesian_test.rb",
"test/extensions",
"test/extensions/word_hash_test.rb",
"test/lsi",
"test/lsi/lsi_test.rb",
"test/test_helper.rb",
"LICENSE",
"README",
"Rakefile"
]

Gem::Specification.new do |s|

  #### Basic information.

  s.name = 'classifier'
  s.version = PKG_VERSION
  s.summary = <<-EOF
   A general classifier module to allow Bayesian and other types of classifications.
  EOF
  s.description = <<-EOF
   A general classifier module to allow Bayesian and other types of classifications.
  EOF

  #### Which files are to be included in this gem?  Everything!  (Except CVS directories.)

  s.files = PKG_FILES

  #### Load-time details: library and application (you will need one or both).

  s.require_path = 'lib'
  s.autorequire = 'classifier'

  #### Documentation and testing.

  s.has_rdoc = true

  #### Dependencies and requirements.

  s.add_dependency('stemmer', '>= 1.0.0')
  s.requirements << "A porter-stemmer module to split word stems."

  #### Author and project details.
  s.author = "Lucas Carlson"
  s.email = "lucas@rufy.com"
  s.homepage = "http://classifier.rufy.com/"
end

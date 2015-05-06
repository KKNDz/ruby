require 'jumpstart_auth'

class MicroBlogger
	attr_reader :client

	def initialize
		#puts "Inicializando.."
		@client = JumpstartAuth.twitter
	end

	def tweet(mensagem)
		@client.update(mensagem)
	end

	def home_timeline
		@client.home_timeline.each do |tweet|
			puts "@#{tweet.user.screen_name}: #{tweet.text}"

		end
	end

end

def tweet
	print "Digite sua mensagem: "
	mensagem = gets.chomp
	$blogger.tweet(mensagem)
end

def timeline
	$blogger.home_timeline
end


op=6

$blogger = MicroBlogger.new

while op != 0
	print "\n0-Sair\n1-Tweet\n2-Timeline\nOpcão: "
	op = gets.chomp.to_i
	case op
		when 0 then 
			puts "Saindo"
		when 1 then
			tweet
		when 2 then
			timeline
		else 
			puts "Digite uma opção valida"
	end
end
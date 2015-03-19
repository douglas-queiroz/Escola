module ApplicationHelper
	def formatar_data(data)
		resp = ""
		unless data.nil?
		  resp = data.strftime("%d/%m/%Y")
		end
		return resp
	end
end

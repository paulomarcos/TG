class SessionsController < ApplicationController

  def new
   end

   def create
       aluno = Aluno.find_by_identificador(params[:identificador])
       # If the aluno exists AND the password entered is correct.
       if aluno && aluno.authenticate(params[:password])
         # Save the aluno id inside the browser cookie. This is how we keep the aluno
         # logged in when they navigate around our website.
         session[:aluno_id] = aluno.id
         redirect_to '/alunos'
       else
       # If aluno's login doesn't work, send them back to the login form.
         redirect_to '/login'
       end
     end

     def destroy
       session[:aluno_id] = nil
       redirect_to '/login'
     end

end

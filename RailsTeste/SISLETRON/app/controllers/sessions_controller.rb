class SessionsController < ApplicationController

  def new
   end

   def create
     aluno = Aluno.find_by_identificador(params[:identificador])
         if aluno.present? && aluno.authenticate(params[:password])
           session[:aluno_id] = aluno.id
           redirect_to aluno
         else
           professor = Professor.find_by_identificador(params[:identificador])
           if professor.present? && professor.authenticate(params[:password])
             session[:professor_id] = professor.id
             redirect_to professor
           else
             flash.now[:notice] = "Identificador ou senha inválidos"
             render 'new'
           end
         end
     end

     def destroy
       session[:aluno_id] = nil
       session[:professor_id] = nil
       redirect_to '/login'
     end

end

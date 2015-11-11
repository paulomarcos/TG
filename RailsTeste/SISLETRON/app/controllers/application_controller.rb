class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_aluno
    @current_aluno ||= Aluno.find(session[:aluno_id]) if session[:aluno_id]
  end
  helper_method :current_aluno

  def current_aluno?
    if current_aluno
      true
    else
      false
    end
  end
  helper_method :current_aluno?


  def own_aluno?(aluno)
    if current_aluno.id != aluno.id
      redirect_to :root, alert: "Sem permissão para acessar página"
    end
  end
  helper_method :own_aluno?

  def current_professor
    @current_professor ||= Professor.find(session[:professor_id]) if session[:professor_id]
  end
  helper_method :current_professor

  def current_professor?
    if current_professor
      true
    else
      false
    end
  end
  helper_method :current_professor?

  def authorize
    redirect_to '/login' unless current_aluno || current_professor
  end

  def require_professor
    redirect_to :root unless current_professor
  end

  def require_aluno
    redirect_to :root unless current_aluno
  end


end

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end

def crup(tipoInfo, metodoExec, estadoInfo, renderElse)
  respond_to do |format|
    if metodoExec
      format.html { redirect_to tipoInfo, notice: 'Funcionario was successfully created.' }
      format.json { render :show, status: estadoInfo, location: tipoInfo }
    else
      format.html { render renderElse }
      format.json { render json: tipoInfo.errors, status: :unprocessable_entity }
    end
  end
end

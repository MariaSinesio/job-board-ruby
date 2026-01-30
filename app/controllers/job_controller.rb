class JobController < ApplicationController
  def index
   render json: Job.all, status: :ok
  end
  def show
    render json: Job.find(params[:id]), status: :ok
  end # Próximo passo: Filtrar vagas por categorias  (Filtrar pelo id ou pelo nome)
  def find_and_filter 
   # fjobs= Job.where(category: params[:label])
   # N+1 com perda de desempenho, .includes (Reduz número de queries)
   @jobs = Job.includes(:category).where(category: {label: 'TI'}) # Acesso dentro de uma lista as categorias 
   @jobs.each do |i|
    puts jobs.name
    puts jobs.description
   end
  end
end

# Método includes traz, carrega o trabalho e suas respectivas categorias ou o outro objeto que venha a ser pedido  ---> Traz COM algo a mais, adianta a vida
# Where, no bom portuga, "onde", filtra de acordo com o parametro passado ---> Escolho isso e isso (IMPORTANTE: Você só usa o where sozinho qiando está filtrando algo da própria tabela, ex: Job, se for algo de categorias, ele não vai reconhecer, então tem que incluir o includes)
# Joins -> "Conecta" a outra tabela
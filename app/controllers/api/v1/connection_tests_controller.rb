class Api::V1::ConnectionTestsController < ApiController
  def create
    ConnectionTest.create(connection_test_params)
    render json: {}, status: 201
  end

  private

  def connection_test_params
    params.require(:connection_test).permit(:latency, :download_rate, :upload_rate, :server, :monitor_name, :error, :backtrace)
  end
end
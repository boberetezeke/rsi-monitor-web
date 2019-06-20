class ConnectionTestsController < ApiController
  def create
    ConnectionTest.create(connection_test_params)
    head :success
  end

  private

  def connection_test_params
    params.require(:connection_test).permit(:latency, :download_rate, :upload_rate, :server)
  end
end
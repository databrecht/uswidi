defmodule UswidiWeb.ThermostatLive do
  # If you generated an app with mix phx.new --live,
  # the line below would be: use MyAppWeb, :live_view
  use Phoenix.LiveView

  def render(assigns) do
    ~H"""
    Current temperature: <%= @temperature %>
    """
  end

  def mount(_params, stuff, socket) do
    if connected?(socket), do: Process.send_after(self(), :update, 1000)
    {:ok, assign(socket, temperature: 5)}
  end

  def handle_info(:update, socket) do
    if connected?(socket), do: Process.send_after(self(), :update, 1000)

    if socket.assigns.temperature != nil do
      {:noreply, assign(socket, temperature: socket.assigns.temperature + 5)}
    else
      {:noreply, assign(socket, :temperature, 5)}
    end
  end
end

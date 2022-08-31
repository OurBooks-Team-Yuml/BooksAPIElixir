defmodule App.Router do
  use Plug.Router

  plug(Plug.Logger)
  plug(:match)

  plug(Plug.Parsers,
    parsers: [:json],
    pass: ["application/json"],
    json_decoder: Jason
  )

  plug(:dispatch)

  get "/" do
    IO.puts conn.query_params
    send_resp(conn, 200, "abcd")
  end

  match _ do
    send_resp(conn, 404, "Not Found")
  end
end

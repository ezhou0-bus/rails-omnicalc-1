Rails.application.routes.draw do
    get("/hello", { controller: "zebra", action: "hello" })
    get("/goodbye", { controller: "zebra", action: "goodbye" })
    get("/square/new", { controller: "zebra", action: "squareone" })
    get("/square/results", { controller: "zebra", action: "squaretwo" })
    get("/square_root/new", { controller: "zebra", action: "squarerootone" })
    get("/square_root/result", { controller: "zebra", action: "squareroottwo" })
    get("/payment/new", { controller: "zebra", action: "paymentone" })
    get("/payment/result", { controller: "zebra", action: "paymenttwo" })
    get("/random/new", { controller: "zebra", action: "randomone" })
    get("/random/result", { controller: "zebra", action: "randomtwo" })
  end


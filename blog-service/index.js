const express = require("express")
const cors = require("cors")

const PORT = 80

const app = express()

app.use(express.json())

app.use(cors())

app.get("/blogs", (req, res) => {
    return res.json({
        message: "hello from blog-service"
    })
})

app.listen(PORT, () => {
    console.log(`SERVER STARTED ON PORT ${PORT}`)
})
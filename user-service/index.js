const express = require("express")
const cors = require("cors")

const PORT = 80

const app = express()

app.use(express.json())

app.use(cors())

app.get("/users", (req, res) => {
    return res.json({
        message: "hello from user-service"
    })
})

app.get("/users/inter-call", async (req, res) => {
    const resp = await fetch(`http://${process.env.BLOG_SERVICE_URL}/blogs`, {
        method: 'GET'
    });
    const data = await resp.json()
    return res.json({
        message: data
    })
})

app.get("/users/error", async (req, res) => {
    process.exit(0)
})

app.listen(PORT, () => {
    console.log(`SERVER STARTED ON PORT ${PORT}`)
})
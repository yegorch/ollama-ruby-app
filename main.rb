require 'ollama-ai'

client = Ollama.new(
  credentials: { address: 'http://localhost:11434' }
)

result = client.generate(
  {
    model: 'llama3.1:8b',
    prompt: 'Why Ruby is a great choice for AI development?',
    stream: false
  }
)

puts result

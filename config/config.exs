import Config

config :phoenix, :json_library, Jason

config :heroicons,
  heroicons_repository: "tailwindlabs/heroicons",
  heroicons_version: :latest,
  allowed_types: ["solid", "outline"]

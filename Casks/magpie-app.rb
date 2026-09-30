cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.458"
  sha256 arm:   "5b32339d9f6cd47433fc4d0f4f4089cdc95eac986d67e9ac9c36aecfeaf6182f",
         intel: "18de53aeb842904b51fee79d124212c44883dd002781ac487107a70a38dc0299"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

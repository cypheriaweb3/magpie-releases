cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.394"
  sha256 arm:   "e9db3abac277cc352a2e4ac10b214468ff1da140515e1501c01b310d628afe98",
         intel: "fbb811ae064e0910032542c3762b515299271cb8401a3a551be21554fed4034a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

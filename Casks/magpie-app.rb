cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.680"
  sha256 arm:   "07ca6273b5a0882aafeff284dedaef31cbb2e579f60dccc4bf421ad9f18e0dd9",
         intel: "366cb517011bcd6797e53bbc7317ef3cc31b9a0422c04e07db6113010daae539"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

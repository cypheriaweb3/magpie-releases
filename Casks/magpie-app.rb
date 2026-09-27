cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.195"
  sha256 arm:   "31a27fa583b079b97f1a3b569b6394d2e8f2e6d0d49aa5dd003581e0658ca0b0",
         intel: "c737752472cdfd6315e74aae2a78f3a3e56c761c7f49f25e84ea311fc3df5ab7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

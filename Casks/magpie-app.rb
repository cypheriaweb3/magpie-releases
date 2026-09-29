cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.417"
  sha256 arm:   "ea34ee2410670afedf4508e2676017fec29c4519d42477bd91647f486f98275b",
         intel: "2941b4623ff6791226a96cf1c3f6a85265abebf21615e880b7f8231d515b0fd7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

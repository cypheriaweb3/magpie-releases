cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.342"
  sha256 arm:   "0ad1cebd07de5546868eaad99778ea85eae1a56b4b0e0674e21f3304bff664f9",
         intel: "730218929b6f75203e96c8cdcc166b41b0928b0b8c69fa80c54177541070ff3a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

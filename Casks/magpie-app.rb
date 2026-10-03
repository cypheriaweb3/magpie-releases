cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.764"
  sha256 arm:   "ea31d367d1cb6411526fe90cc1023014c8f4bc09c5a8238ecc18ac67f9e07b5f",
         intel: "7358dd7539219c2a5de479cad9780590d43cd3b4fe32a05a7606852c92a0ce54"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

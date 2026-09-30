cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.497"
  sha256 arm:   "c029d01ee2b95ea922e80f9476ec1099156c31f6d4c1ef726c8a8d6fbbcffc7e",
         intel: "df6a2b880544102944811224835e8e5deadd0e3d26c5b6f28d23cabac464a535"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

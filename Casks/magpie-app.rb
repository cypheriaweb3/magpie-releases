cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.454"
  sha256 arm:   "570aa0ac23be99e85bbbb20ec6fbd5cc7774e3b1dfc1c114dcc87776ffc53972",
         intel: "c1f47b6fdbe207755bbf0e2dc2f8dc4633bd538acdecb8a48fc95b60edf46fe8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

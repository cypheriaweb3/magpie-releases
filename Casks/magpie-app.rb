cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.829"
  sha256 arm:   "f7950847ccf66aa4717d7852f1fe070cc5487187877015982d234d2ce3bc586a",
         intel: "114e61878c70fe912237a888c275ad6d251d617256004873b0cbace083c638bc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.763"
  sha256 arm:   "4630965503b9abe32189697ac4978f55d47a3bdccdb7614af632ed33f0ceadb2",
         intel: "040a9cb31e3e8bfe5a4a6a755dca3ccd376d972e4f31fcd0c9e3ffa2c432b541"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

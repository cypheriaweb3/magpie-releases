cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.734"
  sha256 arm:   "ae9d9fa4b4d90b32b9af557d4bdf0a008cfbababa0b7bbef914ef5fef9bde896",
         intel: "5bcd94b8e8ab5ab0a2dec8d4e721745018975a2f82451a2f81568d9cb6b73d02"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.526"
  sha256 arm:   "3289be17eb39e93f251bf99f7e54ff072769013f859090cead817a4223f5dec4",
         intel: "e2163fbfe9ba5d030c0d790a3020877cfaa394358c8e7090aabe91242417b86d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

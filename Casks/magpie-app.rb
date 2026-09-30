cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.503"
  sha256 arm:   "057ed5b4831c5b05cae3ed468862388a07e8df8c632ae694808a7852ea7b5c3e",
         intel: "53d3e8b0a888b61439bddebdf5dfe7c0c5f028924ab413d543ceb818d2caaf73"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

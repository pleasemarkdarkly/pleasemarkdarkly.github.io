---
layout: post
title: NLP Derivatives Analyzer
categories: [data mining]
tags: [c#]
---

Public companies are required to publish material information so that the investing market may theoretically arrive at a price determination for the company stock. A common scheme involving various business types and including sophisticated securities attorneys familiar with the creation of shell corporations would 'manufacture' shell-public companies. Over the years, various names for these entities have been popularized, shell corporations, blank check corporations, penny stocks, however at its core its an non-operating publicly traded stock used to fast track companies seeking to 'reverse-merge'.

Shares of these companies are easily concealed and difficult to track through the many corporate actions including issuing, retiring, reverse splits, forward splits, usually over multiple and layered entities.

Through a serious of forward splits and reverse splits millions of stock becomes unaccounted for and difficult to trace. By the time the shell company reverse merges with the unsuspecting entrepreneurs who investment options were reduced to PIPEs (private investments with public entities) the actual outstanding shares were impossible to know for sure.  The original shell owners (insiders) through opaque ownership in the predecessor entities could have easily printed those shares and shipped them to off-shore Cayman Islands or Panama brokerage structures, so-called shelf corporations.  The shelf-corporations would be cached in blocks under 5% of the shell corporation's outstanding stock and more importantly, under the SEC reporting requirements. 

While the newly merged corporation's new management unsuspectingly raises money, secretly the insiders would orchestrate stock pair crosses and proceed to pump-and-dump the shares. While layered and buried beneath seemingly mountains of SEC regulator filings, this orchestrated pattern is detectable through natural language parsing and various pattern matching techniques. While NLP and large scale machine learning of text is seemingly common place today, the practice was niche and state-of-the-art in the late 2009.  Such language inference pattern matching enabled the software to confidently predict and, thus, trade against this largely illegal behavior. 

I wrote such a program in C#, Asp.net, using MS SQL dubbed internally the [SEC Parser](https://github.com/pleasemarkdarkly/sec_parser) which, as the name suggests, tracks and analyses a seed target list of individuals and companies, ingests the corresponding Securities and Exchange Commission's regulatory filings and trades and generates reports highlighting individuals and companies.  By applying the aforementioned heuristics the web application would graph individuals, corporate entities, and stock trades clearing evidencing the scheme for use in shorting the companies.
